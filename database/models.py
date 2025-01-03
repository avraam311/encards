from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship
from sqlalchemy import String, Text, ForeignKey, DateTime, func, BigInteger


# ANNOTATION MODELS ################
class Base(DeclarativeBase):
    created: Mapped[DateTime] = mapped_column(DateTime, default=func.now())
    updated: Mapped[DateTime] = mapped_column(DateTime, default=func.now(), onupdate=func.now())


# BANNER MODELS ################
class Banner(Base):
    __tablename__ = 'banner'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    name: Mapped[str] = mapped_column(String(20), unique=True)
    image: Mapped[str] = mapped_column(String(150), nullable=True)
    description: Mapped[str] = mapped_column(Text, nullable=True)
###############################################


# CATEGORY MODELS ################
class Category(Base):
    __tablename__ = 'category'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    name: Mapped[str] = mapped_column(String(150), nullable=False)
###############################################


# CATEGORY MODELS ################
class SubCategory(Base):
    __tablename__ = 'sub_category'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    name: Mapped[str] = mapped_column(String(150), nullable=False)
    category_id: Mapped[int] = mapped_column(ForeignKey(
        'category.id',), nullable=False)

    category: Mapped['Category'] = relationship(backref='sub_category')
###############################################


# ITEM MODELS ################
class Item(Base):
    __tablename__ = 'item'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    item_media: Mapped[str] = mapped_column(String(150), nullable=True)
    media_text: Mapped[str] = mapped_column(Text, nullable=True)
    sub_category_id: Mapped[int] = mapped_column(ForeignKey(
        'sub_category.id', ondelete='RESTRICT', onupdate='CASCADE'), nullable=False)

    sub_category: Mapped['SubCategory'] = relationship(backref='item')
###############################################


# USER MODELS ################
class User(Base):
    __tablename__ = 'user'

    id: Mapped[int] = mapped_column(primary_key=True, autoincrement=True)
    user_id: Mapped[int] = mapped_column(BigInteger, unique=True)
    first_name: Mapped[str] = mapped_column(String(150), nullable=True)
    last_name: Mapped[str] = mapped_column(String(150), nullable=True)
    phone: Mapped[str] = mapped_column(String(13), nullable=True)
    spec_pack: Mapped[int] = mapped_column(BigInteger, nullable=False)
###############################################

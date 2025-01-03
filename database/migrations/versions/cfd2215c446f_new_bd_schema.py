"""new bd schema

Revision ID: cfd2215c446f
Revises: c782d932b7ee
Create Date: 2024-11-06 19:53:14.820552

"""

from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = "cfd2215c446f"
down_revision: Union[str, None] = "c782d932b7ee"
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint("item_sub_category_id_fkey", "item", type_="foreignkey")
    op.create_foreign_key(
        None,
        "item",
        "sub_category",
        ["sub_category_id"],
        ["id"],
        onupdate="CASCADE",
        ondelete="RESTRICT",
    )
    op.drop_constraint(
        "sub_category_category_id_fkey", "sub_category", type_="foreignkey"
    )
    op.create_foreign_key(
        None, "sub_category", "category", ["category_id"], ["id"]
    )
    # ### end Alembic commands ###


def downgrade() -> None:
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_constraint(None, "sub_category", type_="foreignkey")
    op.create_foreign_key(
        "sub_category_category_id_fkey",
        "sub_category",
        "category",
        ["category_id"],
        ["id"],
        ondelete="CASCADE",
    )
    op.drop_constraint(None, "item", type_="foreignkey")
    op.create_foreign_key(
        "item_sub_category_id_fkey",
        "item",
        "sub_category",
        ["sub_category_id"],
        ["id"],
        ondelete="CASCADE",
    )
    # ### end Alembic commands ###

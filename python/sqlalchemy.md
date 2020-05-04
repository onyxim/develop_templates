# Abstract classes for declarative models

## mixin
Mixin [technique](
https://docs.sqlalchemy.org/en/13/orm/extensions/declarative/mixins.html#mixin-and-custom-base-classes).

```py
from sqlalchemy.ext.declarative import declared_attr

class MyMixin(object):

    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()

    __table_args__ = {'mysql_engine': 'InnoDB'}
    __mapper_args__= {'always_refresh': True}

    id =  Column(Integer, primary_key=True)

class MyModel(MyMixin, Base):
    name = Column(String(1000))
```

## custom Base

[Link](https://docs.sqlalchemy.org/en/13/orm/extensions/declarative/mixins.html#augmenting-the-base) for more info.

```py
from sqlalchemy.ext.declarative import declared_attr

class Base(object):
    @declared_attr
    def __tablename__(cls):
        return cls.__name__.lower()

    __table_args__ = {'mysql_engine': 'InnoDB'}

    id =  Column(Integer, primary_key=True)

from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base(cls=Base)

class MyModel(Base):
    name = Column(String(1000))
```
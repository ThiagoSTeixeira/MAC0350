from django.urls import path

from . import views

urlpatterns = [
    path("", views.index, name="index"),
    path("query1", views.query1, name="query1"),
    path("query2", views.query2, name="query2"),
    path("query3", views.query3, name="query3"),
    path("query4", views.query4, name="query4"),
    path("query5", views.query5, name="query5"),
]

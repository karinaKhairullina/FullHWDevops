from django.db import models
from django.contrib.auth.models import AbstractUser


class Question(models.Model):
    text = models.TextField(blank=True)
    answer1 = models.CharField(max_length=255)
    answer2 = models.CharField(max_length=255)
    answer3 = models.CharField(max_length=255)
    answer4 = models.CharField(max_length=255)
    correct_answer = models.CharField(max_length=255)
    order = models.IntegerField(null=True)
    category = models.CharField(max_length=255, null=True)

    def save_information(self):
        self.save()


class User(AbstractUser):
    pass

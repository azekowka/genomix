from django.db import models

class Articles(models.Model):
    title = models.CharField('Name', max_length=50) #поле
    anons = models.CharField('Anonse', max_length=50) #поле
    full_text=models.TextField('Article')
    date = models.DateTimeField('Publication Date')

    def __str__(self):
        return self.title
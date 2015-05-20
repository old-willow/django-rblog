from django.contrib import admin
from django_markdown.admin import MarkdownModelAdmin

from .models import Author, Category, Entry, Image, Link


class EntryAdmin(MarkdownModelAdmin):
    fields = ('title', 'author', 'slug', 'category', 'publishable', 'pub_date',
              'body', 'enable_comments', 'featured', 'status', )
    list_display = ('id', 'title', )
    prepopulated_fields = { 'slug': ('title', )}


class CategoryAdmin(admin.ModelAdmin):
    prepopulated_fields = { 'slug': ('title', )}


admin.site.register(Author)
admin.site.register(Category, CategoryAdmin)
admin.site.register(Image)
admin.site.register(Link)
admin.site.register(Entry, EntryAdmin)

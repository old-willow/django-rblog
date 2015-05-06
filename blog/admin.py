from django.contrib import admin
from django_markdown.admin import MarkdownModelAdmin

from .models import Author, Category, Entry, Link


class EntryAdmin(MarkdownModelAdmin):
    prepopulated_fields = { 'slug': ('title', )}


class CategoryAdmin(admin.ModelAdmin):
    prepopulated_fields = { 'slug': ('title', )}


admin.site.register(Author)
admin.site.register(Category, CategoryAdmin)
admin.site.register(Link)
admin.site.register(Entry, EntryAdmin)

.class public final synthetic Lf/e/a/j/l0/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/comeback/data/ui/slf/adapter/ChapterAdapter$a;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/slf/NovelReadActivity;

.field public final synthetic b:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public synthetic constructor <init>(Lcom/comeback/data/ui/slf/NovelReadActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/e/a/j/l0/b;->a:Lcom/comeback/data/ui/slf/NovelReadActivity;

    iput-object p2, p0, Lf/e/a/j/l0/b;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lf/e/a/j/l0/b;->a:Lcom/comeback/data/ui/slf/NovelReadActivity;

    iget-object v1, p0, Lf/e/a/j/l0/b;->b:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1, p1}, Lcom/comeback/data/ui/slf/NovelReadActivity;->n(Landroidx/recyclerview/widget/LinearLayoutManager;I)V

    return-void
.end method

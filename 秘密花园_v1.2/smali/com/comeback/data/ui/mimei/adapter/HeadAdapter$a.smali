.class public Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;
.super Ljava/lang/Object;
.source "HeadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;

.field public final synthetic b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->a:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/comeback/data/ui/mimei/SearchActivity;->m(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    .line 6
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->a:Landroid/content/Context;

    const-string v0, "RQMNDwIdXg=="

    .line 7
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->a:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;

    iget-object v1, v1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    .line 8
    iget-boolean v2, v2, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->c:Z

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 10
    :sswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    .line 11
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->a:Landroid/content/Context;

    const-string v0, "WQcU"

    .line 12
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->a:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;

    iget-object v1, v1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    .line 13
    iget-boolean v2, v2, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->c:Z

    .line 14
    invoke-static {p1, v0, v1, v2}, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 15
    :sswitch_3
    iget-object p1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    .line 16
    iget-object p1, p1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->a:Landroid/content/Context;

    const-string v0, "RQcACwYeXF0X"

    .line 17
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->a:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;

    iget-object v1, v1, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter$a;->b:Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;

    .line 18
    iget-boolean v2, v2, Lcom/comeback/data/ui/mimei/adapter/HeadAdapter;->c:Z

    .line 19
    invoke-static {p1, v0, v1, v2}, Lcom/comeback/data/ui/mimei/ComicTypeActivity;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0902d7 -> :sswitch_3
        0x7f0902ea -> :sswitch_2
        0x7f090302 -> :sswitch_1
        0x7f09030b -> :sswitch_0
    .end sparse-switch
.end method

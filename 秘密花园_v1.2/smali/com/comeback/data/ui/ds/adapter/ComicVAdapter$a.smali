.class public Lcom/comeback/data/ui/ds/adapter/ComicVAdapter$a;
.super Ljava/lang/Object;
.source "ComicVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ds/bean/DsItemBean;

.field public final synthetic b:Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;Lcom/comeback/data/ui/ds/bean/DsItemBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter$a;->b:Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter$a;->a:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter$a;->b:Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/ds/adapter/ComicVAdapter$a;->a:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    sget-object v1, Lcom/comeback/data/ui/ds/DsActivity;->d:Ljava/lang/String;

    const-string v2, "BQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/comeback/data/ui/ds/ComicReadActivity;->q(Landroid/content/Context;Lcom/comeback/data/ui/ds/bean/DsItemBean;Z)V

    return-void
.end method

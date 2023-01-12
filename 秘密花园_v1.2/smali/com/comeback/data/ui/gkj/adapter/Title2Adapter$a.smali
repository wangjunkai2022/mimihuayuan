.class public Lcom/comeback/data/ui/gkj/adapter/Title2Adapter$a;
.super Ljava/lang/Object;
.source "Title2Adapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter$a;->a:Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter$a;->a:Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;->c:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter$a;->a:Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;

    .line 5
    iget-object v1, v1, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;->c:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;

    .line 6
    invoke-virtual {v1}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getSpecialName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter$a;->a:Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;

    .line 7
    iget-object v2, v2, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;->c:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;

    .line 8
    invoke-virtual {v2}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter$a;->a:Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;

    .line 9
    iget-object v3, v3, Lcom/comeback/data/ui/gkj/adapter/Title2Adapter;->c:Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;

    .line 10
    invoke-virtual {v3}, Lcom/comeback/data/ui/gkj/bean/NavBean$DataEntity;->getStyle()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/comeback/data/ui/gkj/SpecialActivity;->v(Landroid/content/Context;ILjava/lang/String;II)V

    return-void
.end method

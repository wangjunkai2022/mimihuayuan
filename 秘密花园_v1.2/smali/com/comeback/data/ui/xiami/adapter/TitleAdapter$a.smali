.class public Lcom/comeback/data/ui/xiami/adapter/TitleAdapter$a;
.super Ljava/lang/Object;
.source "TitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xiami/adapter/TitleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/xiami/adapter/TitleAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiami/adapter/TitleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/xiami/adapter/TitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/xiami/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/xiami/adapter/TitleAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/xiami/adapter/TitleAdapter;->b:Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean$VideoBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/HomeBean$DataBean$VideoBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void
.end method

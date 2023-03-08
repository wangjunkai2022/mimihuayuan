.class public Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter$a;
.super Ljava/lang/Object;
.source "TitleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter$a;->a:Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/ui/aimeiju/adapter/TitleAdapter;->c:Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean;

    .line 4
    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/ListBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/aimeiju/TopicActivity;->t(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

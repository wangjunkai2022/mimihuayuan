.class public Lcom/comeback/data/ui/ins/adapter/HotVAdapter$a;
.super Ljava/lang/Object;
.source "HotVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ins/adapter/HotVAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;

.field public final synthetic b:Lcom/comeback/data/ui/ins/adapter/HotVAdapter;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ins/adapter/HotVAdapter;Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/ins/adapter/HotVAdapter$a;->b:Lcom/comeback/data/ui/ins/adapter/HotVAdapter;

    iput-object p2, p0, Lcom/comeback/data/ui/ins/adapter/HotVAdapter$a;->a:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/ins/adapter/HotVAdapter$a;->b:Lcom/comeback/data/ui/ins/adapter/HotVAdapter;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/ins/adapter/HotVAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/ins/adapter/HotVAdapter$a;->a:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;

    invoke-virtual {v0}, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/comeback/data/ui/ins/adapter/HotVAdapter$a;->a:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;

    invoke-virtual {v1}, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/comeback/data/ui/ins/adapter/HotVAdapter$a;->a:Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;

    invoke-virtual {v2}, Lcom/comeback/data/ui/ins/bean/HotUser$DataEntity$ResultListEntity;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/comeback/data/ui/ins/UserCenterActivity;->u(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "PicAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/xiami/adapter/PicAdapter$Holder;->a:Lcom/comeback/data/ui/xiami/adapter/PicAdapter;

    .line 3
    iget-object v0, v0, Lcom/comeback/data/ui/xiami/adapter/PicAdapter;->d:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

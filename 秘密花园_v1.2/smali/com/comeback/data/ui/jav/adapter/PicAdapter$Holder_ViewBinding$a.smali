.class public Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "PicAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/jav/adapter/PicAdapter$Holder;->a:Lcom/comeback/data/ui/jav/adapter/PicAdapter;

    iget-object v0, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    .line 3
    iget-object p1, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->b:Ljava/util/List;

    .line 4
    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/commom/PicBrowseActivity;->l(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

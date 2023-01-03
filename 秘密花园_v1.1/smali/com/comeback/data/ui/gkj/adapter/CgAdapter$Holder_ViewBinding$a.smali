.class public Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "CgAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/CgAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/CgAdapter$Holder;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/gkj/CgReadActivity;->l(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;)V

    return-void
.end method

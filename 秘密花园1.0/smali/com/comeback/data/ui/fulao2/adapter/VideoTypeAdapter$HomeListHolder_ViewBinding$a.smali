.class public Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder_ViewBinding$a;
.super Ld/c/b;
.source "VideoTypeAdapter$HomeListHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder;->a:Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;->getCategory_name()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/comeback/data/ui/fulao2/adapter/VideoTypeAdapter$HomeListHolder;->b:Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideoType$ResponseBean$CategoriesBean;->getCategory_id()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/comeback/data/ui/fulao2/TypeDetailActivity;->n(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

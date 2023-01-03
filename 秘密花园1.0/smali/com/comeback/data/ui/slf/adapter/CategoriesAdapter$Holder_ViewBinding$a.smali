.class public Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "CategoriesAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;

    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;->a:Lcom/comeback/data/ui/slf/bean/CategoriesBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/slf/bean/CategoriesBean;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "VAMXLQ8="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, ""

    .line 5
    :goto_0
    iget-object v1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;->a:Lcom/comeback/data/ui/slf/bean/CategoriesBean;

    invoke-virtual {v1}, Lcom/comeback/data/ui/slf/bean/CategoriesBean;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RQMNDw=="

    .line 6
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;->b:Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;

    iget-object v0, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/slf/RankActivity;->n(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, "RBIGBwISVQ=="

    .line 8
    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;->b:Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;

    iget-object v0, p1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/slf/SpecialActivity;->t(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;->b:Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;

    iget-object v1, v1, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;->a:Lcom/comeback/data/ui/slf/bean/CategoriesBean;

    invoke-virtual {v2}, Lcom/comeback/data/ui/slf/bean/CategoriesBean;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter$Holder;->b:Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;

    iget-object p1, p1, Lcom/comeback/data/ui/slf/adapter/CategoriesAdapter;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, p1}, Lcom/comeback/data/ui/slf/CatIdActivity;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 11
    throw p1
.end method

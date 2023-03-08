.class public Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "WeekAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getGlobal_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VAU="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    invoke-virtual {v0}, Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;->getGlobal_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VA0QFAcSQA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->a:Lcom/comeback/data/ui/gkj/adapter/WeekAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/gkj/adapter/WeekAdapter$Holder;->b:Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;

    invoke-static {v0, p1}, Lcom/comeback/data/ui/gkj/CgReadActivity;->l(Landroid/content/Context;Lcom/comeback/data/ui/gkj/bean/ComicList$ListsBean$DataBean;)V

    :cond_1
    return-void
.end method

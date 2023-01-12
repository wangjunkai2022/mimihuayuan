.class public Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder_ViewBinding$a;
.super Ld/c/b;
.source "ComicAdapter$Holder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder_ViewBinding;-><init>(Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder_ViewBinding;Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder_ViewBinding$a;->c:Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder;->a:Lcom/comeback/data/ui/ds/adapter/ComicAdapter;

    iget-object v0, v0, Lcom/comeback/data/base/BaseAbstractAdapter;->a:Landroid/content/Context;

    iget-object p1, p1, Lcom/comeback/data/ui/ds/adapter/ComicAdapter$Holder;->b:Lcom/comeback/data/ui/ds/bean/DsItemBean;

    sget-object v1, Lcom/comeback/data/ui/ds/DsActivity;->d:Ljava/lang/String;

    const-string v2, "BQ=="

    invoke-static {v2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/comeback/data/ui/ds/ComicReadActivity;->q(Landroid/content/Context;Lcom/comeback/data/ui/ds/bean/DsItemBean;Z)V

    return-void
.end method

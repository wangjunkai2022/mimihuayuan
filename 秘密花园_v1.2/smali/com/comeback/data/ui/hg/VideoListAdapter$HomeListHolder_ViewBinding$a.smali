.class public Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder_ViewBinding$a;
.super Ld/c/b;
.source "VideoListAdapter$HomeListHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder_ViewBinding;-><init>(Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder_ViewBinding;Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder_ViewBinding$a;->c:Lcom/comeback/data/ui/hg/VideoListAdapter$HomeListHolder;

    if-eqz p1, :cond_0

    const-string p1, "3936jez/36nxgKPRnNLug7Tfi9PYm4Sf"

    .line 2
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method

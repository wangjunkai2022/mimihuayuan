.class public Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity_ViewBinding$a;
.super Ld/c/b;
.source "HGDDBrowseActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity_ViewBinding;-><init>(Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity_ViewBinding;Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    invoke-direct {p0}, Ld/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity_ViewBinding$a;->c:Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;

    .line 2
    iget-object v0, p1, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "URI8DQ8="

    .line 3
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "URI8DQ9O"

    .line 4
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "EQ=="

    .line 5
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "EQ=="

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    .line 7
    :cond_0
    iget-object v1, p1, Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    const-class v1, Lf/e/a/j/o/d/c;

    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v2, Lf/e/a/j/o/d/c;->b:Lf/e/a/j/o/d/c;

    if-nez v2, :cond_1

    .line 10
    new-instance v2, Lf/e/a/j/o/d/c;

    invoke-direct {v2}, Lf/e/a/j/o/d/c;-><init>()V

    sput-object v2, Lf/e/a/j/o/d/c;->b:Lf/e/a/j/o/d/c;

    .line 11
    :cond_1
    sget-object v2, Lf/e/a/j/o/d/c;->b:Lf/e/a/j/o/d/c;

    iget-object v2, v2, Lf/e/a/j/o/d/c;->a:Lf/e/a/j/o/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 12
    invoke-interface {v2, v0}, Lf/e/a/j/o/d/a;->a(Ljava/lang/String;)Lm/e;

    move-result-object v0

    .line 13
    new-instance v1, Lf/e/a/j/o/b;

    invoke-direct {v1, p1}, Lf/e/a/j/o/b;-><init>(Lcom/comeback/data/ui/hgdd/HGDDBrowseActivity;)V

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/comeback/data/base/BaseActivity;->k(Lm/e;Lm/j;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v1

    throw p1

    :cond_2
    const-string p1, "3+zUgeTl3pPHjpPEnNXCjbbNhsDam42W"

    .line 16
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

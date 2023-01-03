.class public Lcom/comeback/data/ui/hm/HmLauncherActivity;
.super Lcom/comeback/data/base/BaseActivity;
.source "HmLauncherActivity.java"


# static fields
.field public static d:[Ljava/lang/String;


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ll/d<",
            "Li/i0;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lcom/comeback/data/ui/hm/bean/Host;

.field public flLoad:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "XxYXFBhJFhwCFVcfAFtNCFgPTA=="

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "XxYXFBhJFhwCFVcfAFhNCFgPTA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "XxYXFBhJFhwCFVcfAFlNCFgPTA=="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "XxYXFBhJFhwCFVcfAEQXBEdN"

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/comeback/data/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-class v0, Lcom/comeback/data/ui/hm/HmLauncherActivity;

    invoke-static {p0, v0}, Lf/b/a/a/a;->u(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    const v0, 0x7f0c0066

    return v0
.end method

.method public e()V
    .locals 5

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/comeback/data/base/BaseActivity;->j(I)V

    .line 2
    sget-object v0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->d:[Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->b:Ljava/util/ArrayList;

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    invoke-static {}, Lf/e/a/j/h0/c;->a()Lf/e/a/j/h0/a;

    move-result-object v4

    invoke-interface {v4, v3}, Lf/e/a/j/h0/a;->c(Ljava/lang/String;)Ll/d;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v4, Lf/e/a/j/q/e;

    invoke-direct {v4, p0}, Lf/e/a/j/q/e;-><init>(Lcom/comeback/data/ui/hm/HmLauncherActivity;)V

    invoke-interface {v3, v4}, Ll/d;->X(Ll/f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/d;

    .line 2
    invoke-interface {v1}, Ll/d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getNovel()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getNovel()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getNovel()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lf/e/a/j/q/f/a;->b:Ljava/lang/String;

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getNovel()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getNovel()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getNovel()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lf/e/a/j/q/f/a;->b:Ljava/lang/String;

    goto :goto_0

    .line 6
    :sswitch_2
    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getHm()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getHm()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getHm()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lf/e/a/j/q/f/a;->a:Ljava/lang/String;

    goto :goto_0

    .line 8
    :sswitch_3
    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getHm()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getHm()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/hm/HmLauncherActivity;->c:Lcom/comeback/data/ui/hm/bean/Host;

    invoke-virtual {p1}, Lcom/comeback/data/ui/hm/bean/Host;->getHm()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sput-object p1, Lf/e/a/j/q/f/a;->a:Ljava/lang/String;

    .line 10
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/comeback/data/ui/hm/MainActivity;->m(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902bd -> :sswitch_3
        0x7f0902be -> :sswitch_2
        0x7f0902e7 -> :sswitch_1
        0x7f0902e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/comeback/data/base/BaseActivity;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/comeback/data/ui/hm/HmLauncherActivity;->l()V

    return-void
.end method

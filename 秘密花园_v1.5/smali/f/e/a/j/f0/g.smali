.class public Lf/e/a/j/f0/g;
.super Ljava/lang/Object;
.source "MimeiLauncherActivity.java"

# interfaces
.implements Li/g;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/f0/g;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    iput-object p2, p0, Lf/e/a/j/f0/g;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 2

    .line 1
    iget p2, p2, Li/h0;->e:I

    const/16 v0, 0x12c

    if-le p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Li/f;->S()Li/e0;

    move-result-object p1

    .line 3
    iget-object p1, p1, Li/e0;->b:Li/x;

    .line 4
    iget-object p1, p1, Li/x;->j:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lf/e/a/j/f0/g;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;

    .line 6
    invoke-virtual {v0}, Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;->getTsurl()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/j/f0/j/d;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/comeback/data/ui/mimei/bean/HostBean$ComicBean;->getChain()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/j/f0/j/d;->b:Ljava/lang/String;

    :cond_2
    const-string p1, "0vndg+L00LPpjovg"

    .line 9
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 10
    invoke-static {}, Lf/e/a/j/f0/j/d;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lf/e/a/j/f0/g;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->n(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;)V

    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

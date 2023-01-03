.class public Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity$a;
.super Ljava/lang/Object;
.source "AMJLauncherActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "Li/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity$a;->a:Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ll/g0<",
            "Li/i0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Ll/g0;->a:Li/h0;

    .line 2
    iget p1, p1, Li/h0;->e:I

    const/16 v0, 0x12c

    const-string v1, "3+zUgeTl0Lb+gYnJnc7Sg4PHjNjnl4SMlPKcjsPyi8WTi+bpjM6X"

    if-ge p1, v0, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Lf/i/b/j;

    invoke-direct {p2}, Lf/i/b/j;-><init>()V

    const-class v0, Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean;

    invoke-virtual {p2, p1, v0}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean;

    .line 6
    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean;->getData()Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/BaseUrlBean$DataEntity;->getBaseUrl()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GAsNAA4LF0MbFhsGCBpMAlgRTA=="

    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 8
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity$a;->a:Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;->l(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity$a;->a:Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;->l(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V

    return-void
.end method

.method public b(Ll/d;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/d<",
            "Li/i0;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p1, "3+zUgeTl0Lb+gYnJnc7Sg4PHjNjnl4SMlPKcjsPyi8WTi+bpjM6X"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->n1(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity$a;->a:Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;->l(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V

    return-void
.end method

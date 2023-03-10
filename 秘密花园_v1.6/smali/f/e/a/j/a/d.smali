.class public Lf/e/a/j/a/d;
.super Lm/j;
.source "AMJLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/aimeiju/bean/PlayKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/a/d;->e:Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;

    invoke-direct {p0}, Lm/j;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "3+zUgeTl36HegKDZke/ujIrMhsDam42WnNq4g8XVhP+fi9j8g92d2vbr09rW"

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/b/g/h;->p1(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/comeback/data/ui/aimeiju/bean/PlayKey;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/PlayKey;->getData()Lcom/comeback/data/ui/aimeiju/bean/PlayKey$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/aimeiju/bean/PlayKey$DataEntity;->getKey()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/j/a/f/d;->a:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lf/e/a/j/a/d;->e:Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;->m(Lcom/comeback/data/ui/aimeiju/AMJLauncherActivity;)V

    return-void
.end method

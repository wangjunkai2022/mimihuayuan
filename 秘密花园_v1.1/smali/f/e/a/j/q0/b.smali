.class public Lf/e/a/j/q0/b;
.super Ljava/lang/Object;
.source "XXBrowseActivity.java"

# interfaces
.implements Ll/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/f<",
        "Li/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/q0/b;->a:Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll/d;Ll/g0;)V
    .locals 0
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
    :try_start_0
    iget-object p1, p2, Ll/g0;->b:Ljava/lang/Object;

    .line 2
    check-cast p1, Li/i0;

    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "QhAP"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->W:Ljava/lang/String;

    const-string p1, "Qw0IAQU="

    .line 5
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lf/e/a/k/b;->X:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    iget-object p1, p0, Lf/e/a/j/q0/b;->a:Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;->l(Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;)V

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

    .line 1
    iget-object p1, p0, Lf/e/a/j/q0/b;->a:Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;->l(Lcom/comeback/data/ui/xiuxiu/XXBrowseActivity;)V

    return-void
.end method

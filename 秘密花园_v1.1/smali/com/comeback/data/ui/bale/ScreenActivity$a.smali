.class public Lcom/comeback/data/ui/bale/ScreenActivity$a;
.super Lm/j;
.source "ScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/bale/ScreenActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/bale/bean/ScreenBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/bale/ScreenActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/bale/ScreenActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/bale/ScreenActivity$a;->e:Lcom/comeback/data/ui/bale/ScreenActivity;

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

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/bale/bean/ScreenBean;

    .line 2
    sput-object p1, Lcom/comeback/data/ui/bale/ScreenActivity;->e:Lcom/comeback/data/ui/bale/bean/ScreenBean;

    .line 3
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/bean/ScreenBean;->getResult()Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;

    invoke-direct {v0}, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;-><init>()V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;->setId(I)V

    const-string v1, "0ufLjejb"

    .line 6
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/comeback/data/ui/bale/bean/ScreenBean$ResultBean;->setTitle(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/comeback/data/ui/bale/ScreenActivity$a;->e:Lcom/comeback/data/ui/bale/ScreenActivity;

    .line 9
    invoke-virtual {p1}, Lcom/comeback/data/ui/bale/ScreenActivity;->l()V

    return-void
.end method

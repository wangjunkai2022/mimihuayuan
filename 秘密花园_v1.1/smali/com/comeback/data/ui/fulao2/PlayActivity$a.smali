.class public Lcom/comeback/data/ui/fulao2/PlayActivity$a;
.super Lm/j;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/fulao2/PlayActivity;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/fulao2/bean/VideoInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/fulao2/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/fulao2/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/fulao2/PlayActivity$a;->e:Lcom/comeback/data/ui/fulao2/PlayActivity;

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

    const-string p1, "aD0="

    .line 1
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;

    .line 2
    invoke-virtual {p1}, Lf/e/a/f/j;->toJson()Ljava/lang/String;

    invoke-static {}, Lf/e/a/k/f;->a()V

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/PlayActivity$a;->e:Lcom/comeback/data/ui/fulao2/PlayActivity;

    .line 4
    iget-object v0, v0, Lcom/comeback/data/ui/fulao2/PlayActivity;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->getResponse()Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->getVideo_title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/comeback/data/ui/fulao2/PlayActivity$a;->e:Lcom/comeback/data/ui/fulao2/PlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo;->getResponse()Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/fulao2/bean/VideoInfo$ResponseBean;->getPlayUrl()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/comeback/data/base/BasePlayByIdActivity;->m(Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/comeback/data/ui/gkj/PlayActivity$a;
.super Lm/j;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gkj/PlayActivity;->l(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/gkj/bean/AnimeRead;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/gkj/PlayActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gkj/PlayActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gkj/PlayActivity$a;->e:Lcom/comeback/data/ui/gkj/PlayActivity;

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
    .locals 1

    .line 1
    check-cast p1, Lcom/comeback/data/ui/gkj/bean/AnimeRead;

    .line 2
    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/AnimeRead;->getPlay_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/gkj/PlayActivity$a;->e:Lcom/comeback/data/ui/gkj/PlayActivity;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gkj/bean/AnimeRead;->getPlay_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/comeback/data/ui/gkj/PlayActivity;->n(Lcom/comeback/data/ui/gkj/PlayActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

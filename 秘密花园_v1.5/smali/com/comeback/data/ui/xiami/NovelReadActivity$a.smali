.class public Lcom/comeback/data/ui/xiami/NovelReadActivity$a;
.super Lm/j;
.source "NovelReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/xiami/NovelReadActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/xiami/bean/NovelDetail;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/xiami/NovelReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/xiami/NovelReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity$a;->e:Lcom/comeback/data/ui/xiami/NovelReadActivity;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/comeback/data/ui/xiami/bean/NovelDetail;

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/xiami/NovelReadActivity$a;->e:Lcom/comeback/data/ui/xiami/NovelReadActivity;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 4
    iget-object v0, v0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/NovelDetail;->getData()Lcom/comeback/data/ui/xiami/bean/NovelDetail$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/NovelDetail$DataBean;->getContent()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lcom/comeback/data/ui/xiami/NovelReadActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/NovelDetail;->getData()Lcom/comeback/data/ui/xiami/bean/NovelDetail$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/xiami/bean/NovelDetail$DataBean;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

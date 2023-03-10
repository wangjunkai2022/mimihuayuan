.class public Lcom/comeback/data/ui/gdian/NovelReadActivity$a;
.super Lm/j;
.source "NovelReadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/gdian/NovelReadActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm/j<",
        "Lcom/comeback/data/ui/gdian/bean/Novel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/comeback/data/ui/gdian/NovelReadActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/gdian/NovelReadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/gdian/NovelReadActivity$a;->e:Lcom/comeback/data/ui/gdian/NovelReadActivity;

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
    check-cast p1, Lcom/comeback/data/ui/gdian/bean/Novel;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/NovelReadActivity$a;->e:Lcom/comeback/data/ui/gdian/NovelReadActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/gdian/NovelReadActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Novel;->getData()Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->getChapter_content()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/comeback/data/ui/gdian/NovelReadActivity$a;->e:Lcom/comeback/data/ui/gdian/NovelReadActivity;

    iget-object v0, v0, Lcom/comeback/data/ui/gdian/NovelReadActivity;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Novel;->getData()Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/comeback/data/ui/gdian/bean/Novel$DataEntity;->getChapter_content()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

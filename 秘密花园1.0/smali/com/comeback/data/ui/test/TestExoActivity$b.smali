.class public Lcom/comeback/data/ui/test/TestExoActivity$b;
.super Ljava/lang/Object;
.source "TestExoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/test/TestExoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/test/TestExoActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/test/TestExoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$b;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$b;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 2
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 3
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$b;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 5
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 6
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$b;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 8
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 9
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$b;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 11
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 12
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$b;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 14
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->d:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity$b;->a:Lcom/comeback/data/ui/test/TestExoActivity;

    .line 17
    iget-object p1, p1, Lcom/comeback/data/ui/test/TestExoActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f0e009f

    .line 18
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.class public Lcom/comeback/data/ui/test/TestExoActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TestExoActivity.java"


# static fields
.field public static e:[Ljava/lang/String;

.field public static f:Ljava/lang/String;


# instance fields
.field public a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

.field public b:Ljava/lang/Runnable;

.field public c:Landroid/widget/SeekBar;

.field public d:Landroid/widget/ImageView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "VgwHFgQaXR0DA0YKERkQAlgMTTYuMn1sNj5gIiokIidoMTcrOTJ+dg=="

    .line 1
    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "VgwHFgQaXR0DA0YKERkQAlgMTTM5Om12LCNsMz04LSp7PTAwJCF4dDY="

    invoke-static {v1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/comeback/data/ui/test/TestExoActivity;->e:[Ljava/lang/String;

    const-string v0, "YwcQEA=="

    .line 2
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/comeback/data/ui/test/TestExoActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/comeback/data/ui/test/TestExoActivity$a;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/test/TestExoActivity$a;-><init>(Lcom/comeback/data/ui/test/TestExoActivity;)V

    iput-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00bc

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f090348

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    invoke-static {p0, v0}, Lc/a/a/b/g/h;->h(Landroid/app/Activity;Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;)Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 5
    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->hideControllerView()V

    :try_start_0
    const-string v0, "VgwHFgQaXR0DA0YKERkQAlgMTTM5Om12LCNsMz04LSp7PTAwJCF4dDY="

    .line 6
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/comeback/data/ui/test/TestExoActivity;->e:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string v0, "XxYXFFFcFgJCXxpfTERWWRlQUlFERQwEQFYDIkxdVFMEJ1RVUkQBBUcgAFA5XExbBFJTVFNDCwNDUwxQSSxbXAZWUyYvQn0HR1Z2XkBcUip2VyVdKV4MBEdSGVdIUydGAiYgIUZKAQA1IgMiSiglXAVMDhRfTFpQHAJRWkhfUlkRBhYWCgdQXB1bBl9KTAYTRwsRAVZCAQNDVhIXCwMHVlIAAl1SQgkHRlYAUkxZBgkFVFYHUxcOCxUABVYeWwdcERcTFzQQVVoWCEA4Fg8XAkdfBwENRABSRgUSEggZPB9EX1JRXEUIC0FSBVBeHxMYaBcQARkaXQ5VE0AOHFclOnUIJRYbJGFaSyV1A09ZCDt8USkTPAsfRRoCCT81PggReCYyVyUZbAY9ARIREw8aVnZaWgVcQ1sEQVFQA0wOAQoGW1oCXkABVRFSBFFLXlZdB0QQFFZVW1BOVBIDCg9eHgVTRRcCTg0BVQdYDicYBg9eEAYHHyxdXB4HXQlFEwgeUAFNBxtACB0cEkBJGwMBBUMUTQoOBx9SHw9rFR0OChlSARc7DgtmVQcHU1odDgANVlIAUVpCWFcXUQUBHFoFClIHWlMPR1sGR1NXV0oLU1MPVVBWD0JaAUteBV9eCw8CaBAGAAIBXFAHOVEfJx4OAlkLDQM0B0oOQlMDUUlSUV8GVEUFBxpmQRYCXRUdCRc0Uho8EAYaV1odAWsCABoKGVJfUFJbQx9SHw9rFR0OChlSARc7DgtmWxwSCVc="

    .line 9
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "XxYXFBhJFhweFgBJDgAQA15MAAsGXAsDQl4ZV0xHUloYVVRRW0FaVhUDAQEdXVQPUlQFUwhKXAYWBwMEHV9aWlVMDhRf"

    .line 10
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "XxYXFBhJFhwSA0IOVgsaHFsRCwsbXVpcHklWDh4aEhlECQEFHBhNHEBXG1NMXlteDlMGVlxCDFJGUVdSGQxSXVNXWwdcRl0GQwNXOEg1Ag0CVQFVDhILUkIHAFcbXAIPDwNRAVNLCwsQAwEEQVlNBkdWTA0FF1xLXQsHEkA="

    .line 11
    invoke-static {v0}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "VQMNBQUSF14DUg=="

    invoke-static {v0, v1, v2}, Lf/b/a/a/a;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->setPlayUri(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->startPlayer()Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;

    const v0, 0x7f090227

    .line 16
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->c:Landroid/widget/SeekBar;

    .line 17
    invoke-virtual {p1}, Lchuangyuan/ycj/videolibrary/widget/VideoPlayerView;->getPlaybackControlView()Lf/i/a/a/k1/d;

    move-result-object v0

    const v1, 0x7f09008f

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09010c

    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 22
    iget-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/comeback/data/ui/test/TestExoActivity$b;

    invoke-direct {v1, p0}, Lcom/comeback/data/ui/test/TestExoActivity$b;-><init>(Lcom/comeback/data/ui/test/TestExoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090090

    .line 23
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity;->c:Landroid/widget/SeekBar;

    new-instance v0, Lcom/comeback/data/ui/test/TestExoActivity$c;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/test/TestExoActivity$c;-><init>(Lcom/comeback/data/ui/test/TestExoActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 26
    iget-object p1, p0, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    new-instance v0, Lcom/comeback/data/ui/test/TestExoActivity$d;

    invoke-direct {v0, p0}, Lcom/comeback/data/ui/test/TestExoActivity$d;-><init>(Lcom/comeback/data/ui/test/TestExoActivity;)V

    invoke-virtual {p1, v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->addVideoInfoListener(Lchuangyuan/ycj/videolibrary/listener/VideoInfoListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onDestroy()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p2, p3, p1

    if-nez p2, :cond_1

    const-string p2, "WAwxARoGXEAHNlEVFQMQGF4NDRc5FkpGHxIUAAoLDR9SBg=="

    .line 2
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "0f/gjfLj3qfAjpvQnuLzjr39"

    .line 3
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    const-string p1, "WAwxARoGXEAHNlEVFQMQGF4NDRc5FkpGHxIUAx0ECg5T"

    .line 4
    invoke-static {p1}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/comeback/data/ui/test/TestExoActivity;->a:Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;

    invoke-virtual {v0}, Lchuangyuan/ycj/videolibrary/video/ExoUserPlayer;->onResume()V

    return-void
.end method

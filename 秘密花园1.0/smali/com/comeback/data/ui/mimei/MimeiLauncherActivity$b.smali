.class public Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;
.super Ljava/lang/Object;
.source "MimeiLauncherActivity.java"

# interfaces
.implements Li/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->o(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    iput p2, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 1

    .line 1
    iget p1, p2, Li/h0;->e:I

    const/16 v0, 0x12c

    if-le p1, v0, :cond_1

    .line 2
    iget p1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;->a:I

    sget-object p2, Lf/e/a/k/b;->B:[Ljava/lang/String;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->l(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;I)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object p2, p2, Li/h0;->h:Li/i0;

    .line 5
    invoke-virtual {p2}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    :goto_0
    invoke-static {p1}, Lf/e/a/j/e0/j/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x40

    if-le p2, v0, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x20

    sub-int/2addr p2, v0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_2
    new-instance p2, Lf/i/b/j;

    invoke-direct {p2}, Lf/i/b/j;-><init>()V

    const-class v0, Lcom/comeback/data/ui/mimei/bean/HostBean;

    invoke-virtual {p2, p1, v0}, Lf/i/b/j;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/comeback/data/ui/mimei/bean/HostBean;

    .line 11
    iget-object p2, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    invoke-static {p2, p1}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->m(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;Lcom/comeback/data/ui/mimei/bean/HostBean;)V

    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;->a:I

    sget-object p2, Lf/e/a/k/b;->B:[Ljava/lang/String;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity$b;->b:Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;->l(Lcom/comeback/data/ui/mimei/MimeiLauncherActivity;I)V

    :cond_0
    return-void
.end method

.class public Lf/e/a/j/d0/g;
.super Ljava/lang/Object;
.source "MmLaunchActivity.java"

# interfaces
.implements Li/g;


# instance fields
.field public final synthetic a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/comeback/data/ui/maomi/MmLaunchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/e/a/j/d0/g;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Li/f;Li/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget p1, p2, Li/h0;->e:I

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_0

    .line 2
    iget-object p1, p2, Li/h0;->h:Li/i0;

    .line 3
    invoke-virtual {p1}, Li/i0;->H()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "DA=="

    .line 5
    invoke-static {p2}, Lf/e/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->g:[Ljava/lang/String;

    .line 6
    :cond_0
    iget-object p1, p0, Lf/e/a/j/d0/g;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->l(Lcom/comeback/data/ui/maomi/MmLaunchActivity;)V

    return-void
.end method

.method public d(Li/f;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/e/a/j/d0/g;->a:Lcom/comeback/data/ui/maomi/MmLaunchActivity;

    invoke-static {p1}, Lcom/comeback/data/ui/maomi/MmLaunchActivity;->l(Lcom/comeback/data/ui/maomi/MmLaunchActivity;)V

    return-void
.end method

.class public final Lf/i/a/a/w0/k;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/w0/k$b;,
        Lf/i/a/a/w0/k$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;

.field public final b:Lf/i/a/a/w0/k$b;

.field public final c:Lf/i/a/a/w0/k$c;

.field public d:I

.field public e:F

.field public f:Landroid/media/AudioFocusRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/i/a/a/w0/k$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lf/i/a/a/w0/k;->e:F

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lf/i/a/a/w0/k;->a:Landroid/media/AudioManager;

    .line 4
    iput-object p2, p0, Lf/i/a/a/w0/k;->c:Lf/i/a/a/w0/k$c;

    .line 5
    new-instance p1, Lf/i/a/a/w0/k$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lf/i/a/a/w0/k$b;-><init>(Lf/i/a/a/w0/k;Lf/i/a/a/w0/k$a;)V

    iput-object p1, p0, Lf/i/a/a/w0/k;->b:Lf/i/a/a/w0/k$b;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lf/i/a/a/w0/k;->d:I

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget p1, p0, Lf/i/a/a/w0/k;->d:I

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Lf/i/a/a/m1/h0;->a:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lf/i/a/a/w0/k;->f:Landroid/media/AudioFocusRequest;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lf/i/a/a/w0/k;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lf/i/a/a/w0/k;->a:Landroid/media/AudioManager;

    iget-object v0, p0, Lf/i/a/a/w0/k;->b:Lf/i/a/a/w0/k$b;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lf/i/a/a/w0/k;->d:I

    return-void
.end method

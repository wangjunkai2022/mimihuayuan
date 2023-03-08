.class public Lf/i/a/a/w0/k$b;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/w0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lf/i/a/a/w0/k;


# direct methods
.method public constructor <init>(Lf/i/a/a/w0/k;Lf/i/a/a/w0/k$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 9

    const/4 v0, -0x3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    .line 2
    iput v4, p1, Lf/i/a/a/w0/k;->d:I

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    .line 4
    iput v3, p1, Lf/i/a/a/w0/k;->d:I

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    .line 6
    iput v2, p1, Lf/i/a/a/w0/k;->d:I

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    if-eqz p1, :cond_c

    .line 8
    iput v1, p1, Lf/i/a/a/w0/k;->d:I

    .line 9
    :goto_0
    iget-object p1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    .line 10
    iget v0, p1, Lf/i/a/a/w0/k;->d:I

    const/4 v5, 0x0

    if-eq v0, v3, :cond_7

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown audio focus state: "

    invoke-static {v0}, Lf/b/a/a/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    .line 12
    iget v1, v1, Lf/i/a/a/w0/k;->d:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_5
    iget-object p1, p1, Lf/i/a/a/w0/k;->c:Lf/i/a/a/w0/k$c;

    .line 15
    check-cast p1, Lf/i/a/a/t0$b;

    invoke-virtual {p1, v5}, Lf/i/a/a/t0$b;->b(I)V

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, p1, Lf/i/a/a/w0/k;->c:Lf/i/a/a/w0/k$c;

    .line 17
    check-cast p1, Lf/i/a/a/t0$b;

    invoke-virtual {p1, v4}, Lf/i/a/a/t0$b;->b(I)V

    goto :goto_1

    .line 18
    :cond_7
    iget-object p1, p1, Lf/i/a/a/w0/k;->c:Lf/i/a/a/w0/k$c;

    .line 19
    check-cast p1, Lf/i/a/a/t0$b;

    invoke-virtual {p1, v3}, Lf/i/a/a/t0$b;->b(I)V

    .line 20
    iget-object p1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    .line 21
    invoke-virtual {p1, v4}, Lf/i/a/a/w0/k;->a(Z)V

    .line 22
    :cond_8
    :goto_1
    iget-object p1, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    .line 23
    iget p1, p1, Lf/i/a/a/w0/k;->d:I

    if-ne p1, v1, :cond_9

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_9
    const/high16 p1, 0x3f800000    # 1.0f

    .line 24
    :goto_2
    iget-object v0, p0, Lf/i/a/a/w0/k$b;->a:Lf/i/a/a/w0/k;

    .line 25
    iget v1, v0, Lf/i/a/a/w0/k;->e:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_b

    .line 26
    iput p1, v0, Lf/i/a/a/w0/k;->e:F

    .line 27
    iget-object p1, v0, Lf/i/a/a/w0/k;->c:Lf/i/a/a/w0/k$c;

    .line 28
    check-cast p1, Lf/i/a/a/t0$b;

    .line 29
    iget-object p1, p1, Lf/i/a/a/t0$b;->a:Lf/i/a/a/t0;

    .line 30
    iget v0, p1, Lf/i/a/a/t0;->z:F

    iget-object v1, p1, Lf/i/a/a/t0;->n:Lf/i/a/a/w0/k;

    .line 31
    iget v1, v1, Lf/i/a/a/w0/k;->e:F

    mul-float v0, v0, v1

    .line 32
    iget-object v1, p1, Lf/i/a/a/t0;->b:[Lf/i/a/a/p0;

    array-length v3, v1

    :goto_3
    if-ge v5, v3, :cond_b

    aget-object v6, v1, v5

    .line 33
    invoke-interface {v6}, Lf/i/a/a/p0;->t()I

    move-result v7

    if-ne v7, v4, :cond_a

    .line 34
    iget-object v7, p1, Lf/i/a/a/t0;->c:Lf/i/a/a/y;

    invoke-virtual {v7, v6}, Lf/i/a/a/y;->E(Lf/i/a/a/n0$b;)Lf/i/a/a/n0;

    move-result-object v6

    .line 35
    iget-boolean v7, v6, Lf/i/a/a/n0;->j:Z

    xor-int/2addr v7, v4

    invoke-static {v7}, Lc/a/a/b/g/h;->v(Z)V

    .line 36
    iput v2, v6, Lf/i/a/a/n0;->d:I

    .line 37
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 38
    iget-boolean v8, v6, Lf/i/a/a/n0;->j:Z

    xor-int/2addr v8, v4

    invoke-static {v8}, Lc/a/a/b/g/h;->v(Z)V

    .line 39
    iput-object v7, v6, Lf/i/a/a/n0;->e:Ljava/lang/Object;

    .line 40
    invoke-virtual {v6}, Lf/i/a/a/n0;->c()Lf/i/a/a/n0;

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    return-void

    :cond_c
    const/4 p1, 0x0

    .line 41
    throw p1
.end method

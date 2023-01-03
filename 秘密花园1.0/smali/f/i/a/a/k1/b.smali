.class public Lf/i/a/a/k1/b;
.super Ljava/lang/Object;
.source "DefaultTrackNameProvider.java"

# interfaces
.implements Lf/i/a/a/k1/h;


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method


# virtual methods
.method public a(Lf/i/a/a/b0;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p1, Lf/i/a/a/b0;->i:Ljava/lang/String;

    invoke-static {v0}, Lf/i/a/a/m1/r;->f(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p1, Lf/i/a/a/b0;->f:Ljava/lang/String;

    invoke-static {v0}, Lf/i/a/a/m1/r;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    const/4 v0, 0x2

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p1, Lf/i/a/a/b0;->f:Ljava/lang/String;

    invoke-static {v0}, Lf/i/a/a/m1/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    .line 4
    :cond_4
    iget v0, p1, Lf/i/a/a/b0;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lf/i/a/a/b0;->o:I

    if-eq v0, v1, :cond_5

    goto :goto_0

    .line 5
    :cond_5
    iget v0, p1, Lf/i/a/a/b0;->v:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Lf/i/a/a/b0;->w:I

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    :goto_2
    const-string v4, ""

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v3, :cond_9

    new-array v0, v5, [Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/b;->d(Lf/i/a/a/b0;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    .line 7
    iget v5, p1, Lf/i/a/a/b0;->n:I

    .line 8
    iget v7, p1, Lf/i/a/a/b0;->o:I

    if-eq v5, v1, :cond_8

    if-ne v7, v1, :cond_7

    goto :goto_3

    .line 9
    :cond_7
    iget-object v1, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v4, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_resolution:I

    new-array v8, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    invoke-virtual {v1, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_8
    :goto_3
    aput-object v4, v0, v2

    .line 11
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/b;->b(Lf/i/a/a/b0;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 12
    invoke-virtual {p0, v0}, Lf/i/a/a/k1/b;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    if-ne v0, v2, :cond_10

    new-array v0, v5, [Ljava/lang/String;

    .line 13
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/b;->c(Lf/i/a/a/b0;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    .line 14
    iget v5, p1, Lf/i/a/a/b0;->v:I

    if-eq v5, v1, :cond_f

    if-ge v5, v2, :cond_a

    goto :goto_4

    :cond_a
    if-eq v5, v2, :cond_e

    if-eq v5, v3, :cond_d

    const/4 v1, 0x6

    if-eq v5, v1, :cond_c

    const/4 v1, 0x7

    if-eq v5, v1, :cond_c

    const/16 v1, 0x8

    if-eq v5, v1, :cond_b

    .line 15
    iget-object v1, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v4, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_surround:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 16
    :cond_b
    iget-object v1, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v4, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_surround_7_point_1:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 17
    :cond_c
    iget-object v1, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v4, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_surround_5_point_1:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 18
    :cond_d
    iget-object v1, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v4, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_stereo:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 19
    :cond_e
    iget-object v1, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v4, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_mono:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_f
    :goto_4
    aput-object v4, v0, v2

    .line 20
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/b;->b(Lf/i/a/a/b0;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 21
    invoke-virtual {p0, v0}, Lf/i/a/a/k1/b;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 22
    :cond_10
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/b;->c(Lf/i/a/a/b0;)Ljava/lang/String;

    move-result-object p1

    .line 23
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    iget-object p1, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v0, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_11
    return-object p1
.end method

.method public final b(Lf/i/a/a/b0;)Ljava/lang/String;
    .locals 5

    .line 1
    iget p1, p1, Lf/i/a/a/b0;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v1, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_bitrate:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float p1, p1

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr p1, v4

    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final c(Lf/i/a/a/b0;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-object v1, p1, Lf/i/a/a/b0;->A:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    const-string v2, "und"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget v2, Lf/i/a/a/m1/h0;->a:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_1

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 4
    :goto_0
    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, v3

    :goto_2
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lf/i/a/a/k1/b;->d(Lf/i/a/a/b0;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lf/i/a/a/k1/b;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    iget-object v0, p1, Lf/i/a/a/b0;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p1, Lf/i/a/a/b0;->b:Ljava/lang/String;

    :goto_3
    move-object v0, v3

    :cond_4
    return-object v0
.end method

.method public final d(Lf/i/a/a/b0;)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p1, Lf/i/a/a/b0;->d:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v2, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_role_alternate:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    iget v2, p1, Lf/i/a/a/b0;->d:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 4
    iget-object v0, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v5, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_role_supplementary:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lf/i/a/a/k1/b;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_1
    iget v2, p1, Lf/i/a/a/b0;->d:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, v4

    .line 6
    iget-object v0, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v5, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_role_commentary:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v2}, Lf/i/a/a/k1/b;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_2
    iget p1, p1, Lf/i/a/a/b0;->d:I

    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    new-array p1, v1, [Ljava/lang/String;

    aput-object v0, p1, v4

    .line 8
    iget-object v0, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v1, Lchuangyuan/ycj/videolibrary/R$string;->exo_track_role_closed_captions:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-virtual {p0, p1}, Lf/i/a/a/k1/b;->e([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public final varargs e([Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v2, v4

    goto :goto_1

    .line 4
    :cond_0
    iget-object v5, p0, Lf/i/a/a/k1/b;->a:Landroid/content/res/Resources;

    sget v6, Lchuangyuan/ycj/videolibrary/R$string;->exo_item_list:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v1

    const/4 v2, 0x1

    aput-object v4, v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

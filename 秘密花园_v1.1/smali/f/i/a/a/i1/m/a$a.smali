.class public Lf/i/a/a/i1/m/a$a;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/i1/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/i1/m/a$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/i/a/a/i1/m/a$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/StringBuilder;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/m/a$a;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/m/a$a;->c:Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0, p1}, Lf/i/a/a/i1/m/a$a;->e(I)V

    .line 6
    iput p2, p0, Lf/i/a/a/i1/m/a$a;->h:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/m/a$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lf/i/a/a/i1/m/a$a;->c:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 4
    iget-object v2, p0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/i/a/a/i1/m/a$a$a;

    .line 5
    iget v3, v2, Lf/i/a/a/i1/m/a$a$a;->c:I

    if-ne v3, v0, :cond_0

    add-int/lit8 v3, v3, -0x1

    .line 6
    iput v3, v2, Lf/i/a/a/i1/m/a$a$a;->c:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(I)Lf/i/a/a/i1/b;
    .locals 11

    .line 1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lf/i/a/a/i1/m/a$a;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Lf/i/a/a/i1/m/a$a;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    .line 4
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lf/i/a/a/i1/m/a$a;->c()Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_1
    iget v2, p0, Lf/i/a/a/i1/m/a$a;->e:I

    iget v3, p0, Lf/i/a/a/i1/m/a$a;->f:I

    add-int/2addr v2, v3

    rsub-int/lit8 v3, v2, 0x20

    .line 8
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v4, v2, v3

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq p1, v5, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    iget p1, p0, Lf/i/a/a/i1/m/a$a;->g:I

    if-ne p1, v7, :cond_4

    .line 10
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v5, 0x3

    if-lt p1, v5, :cond_3

    if-gez v3, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iget p1, p0, Lf/i/a/a/i1/m/a$a;->g:I

    if-ne p1, v7, :cond_5

    if-lez v4, :cond_5

    const/4 p1, 0x2

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    if-eq p1, v6, :cond_7

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x42000000    # 32.0f

    if-eq p1, v7, :cond_6

    :goto_2
    int-to-float v2, v2

    div-float/2addr v2, v8

    mul-float v2, v2, v5

    add-float/2addr v2, v4

    move v8, v2

    goto :goto_3

    :cond_6
    rsub-int/lit8 v2, v3, 0x20

    goto :goto_2

    :cond_7
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 12
    :goto_3
    iget v2, p0, Lf/i/a/a/i1/m/a$a;->g:I

    if-eq v2, v6, :cond_9

    iget v2, p0, Lf/i/a/a/i1/m/a$a;->d:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 13
    :cond_9
    :goto_4
    iget v0, p0, Lf/i/a/a/i1/m/a$a;->d:I

    add-int/lit8 v0, v0, -0xf

    add-int/lit8 v2, v0, -0x2

    const/4 v5, 0x2

    .line 14
    :goto_5
    new-instance v9, Lf/i/a/a/i1/b;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    int-to-float v4, v2

    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object v0, v9

    move-object v2, v3

    move v3, v4

    move v4, v6

    move v6, v8

    move v7, p1

    move v8, v10

    invoke-direct/range {v0 .. v8}, Lf/i/a/a/i1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v9
.end method

.method public final c()Landroid/text/SpannableString;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lf/i/a/a/i1/m/a$a;->c:Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 3
    :cond_0
    :goto_0
    iget-object v12, v0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/16 v13, 0x21

    if-ge v5, v12, :cond_b

    .line 4
    iget-object v12, v0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf/i/a/a/i1/m/a$a$a;

    .line 5
    iget-boolean v15, v12, Lf/i/a/a/i1/m/a$a$a;->b:Z

    .line 6
    iget v3, v12, Lf/i/a/a/i1/m/a$a$a;->a:I

    const/16 v14, 0x8

    if-eq v3, v14, :cond_3

    const/4 v10, 0x7

    if-ne v3, v10, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-ne v3, v10, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    sget-object v10, Lf/i/a/a/i1/m/a;->y:[I

    .line 8
    aget v11, v10, v3

    :goto_2
    move v10, v14

    .line 9
    :cond_3
    iget v3, v12, Lf/i/a/a/i1/m/a$a$a;->c:I

    add-int/lit8 v5, v5, 0x1

    .line 10
    iget-object v12, v0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_4

    iget-object v12, v0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf/i/a/a/i1/m/a$a$a;

    iget v12, v12, Lf/i/a/a/i1/m/a$a$a;->c:I

    goto :goto_3

    :cond_4
    move v12, v2

    :goto_3
    if-ne v3, v12, :cond_5

    goto :goto_0

    :cond_5
    if-eq v6, v4, :cond_6

    if-nez v15, :cond_6

    .line 11
    new-instance v12, Landroid/text/style/UnderlineSpan;

    invoke-direct {v12}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1, v12, v6, v3, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v6, -0x1

    goto :goto_4

    :cond_6
    if-ne v6, v4, :cond_7

    if-eqz v15, :cond_7

    move v6, v3

    :cond_7
    :goto_4
    if-eq v7, v4, :cond_8

    if-nez v10, :cond_8

    .line 12
    new-instance v12, Landroid/text/style/StyleSpan;

    const/4 v14, 0x2

    invoke-direct {v12, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v12, v7, v3, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v7, -0x1

    goto :goto_5

    :cond_8
    if-ne v7, v4, :cond_9

    if-eqz v10, :cond_9

    move v7, v3

    :cond_9
    :goto_5
    if-eq v11, v9, :cond_0

    if-ne v9, v4, :cond_a

    goto :goto_6

    .line 13
    :cond_a
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v12, v8, v3, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_6
    move v8, v3

    move v9, v11

    goto :goto_0

    :cond_b
    if-eq v6, v4, :cond_c

    if-eq v6, v2, :cond_c

    .line 14
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1, v3, v6, v2, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    if-eq v7, v4, :cond_d

    if-eq v7, v2, :cond_d

    .line 15
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v3, v7, v2, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    if-eq v8, v2, :cond_f

    if-ne v9, v4, :cond_e

    goto :goto_7

    .line 16
    :cond_e
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v3, v8, v2, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 17
    :cond_f
    :goto_7
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/i1/m/a$a;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/i/a/a/i1/m/a$a;->c:Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(I)V
    .locals 1

    .line 1
    iput p1, p0, Lf/i/a/a/i1/m/a$a;->g:I

    .line 2
    iget-object p1, p0, Lf/i/a/a/i1/m/a$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    iget-object p1, p0, Lf/i/a/a/i1/m/a$a;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iget-object p1, p0, Lf/i/a/a/i1/m/a$a;->c:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 p1, 0xf

    .line 5
    iput p1, p0, Lf/i/a/a/i1/m/a$a;->d:I

    .line 6
    iput v0, p0, Lf/i/a/a/i1/m/a$a;->e:I

    .line 7
    iput v0, p0, Lf/i/a/a/i1/m/a$a;->f:I

    return-void
.end method

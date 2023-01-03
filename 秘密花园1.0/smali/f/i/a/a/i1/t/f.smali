.class public final Lf/i/a/a/i1/t/f;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/i1/t/f$a;,
        Lf/i/a/a/i1/t/f$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/i1/t/f;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf/i/a/a/i1/t/f;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lf/i/a/a/i1/t/f;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Ljava/lang/String;Lf/i/a/a/i1/t/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lf/i/a/a/i1/t/f$a;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/t/d;",
            ">;",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/t/f$b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 1
    iget v3, v0, Lf/i/a/a/i1/t/f$a;->b:I

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 3
    iget-object v5, v0, Lf/i/a/a/i1/t/f$a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v6, :cond_6

    const/16 v13, 0x69

    if-eq v6, v13, :cond_5

    const v13, 0x3291ee

    if-eq v6, v13, :cond_4

    const/16 v13, 0x62

    if-eq v6, v13, :cond_3

    const/16 v13, 0x63

    if-eq v6, v13, :cond_2

    const/16 v13, 0x75

    if-eq v6, v13, :cond_1

    const/16 v13, 0x76

    if-eq v6, v13, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, "v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    const-string v6, "u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    const-string v6, "c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x3

    goto :goto_1

    :cond_3
    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const-string v6, "lang"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    goto :goto_1

    :cond_5
    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x6

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v5, -0x1

    :goto_1
    const/16 v6, 0x21

    packed-switch v5, :pswitch_data_0

    return-void

    .line 4
    :pswitch_0
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 5
    :pswitch_1
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 6
    :pswitch_2
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, v5, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    :goto_2
    :pswitch_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->clear()V

    .line 8
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v5, :cond_c

    move-object/from16 v14, p3

    .line 9
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lf/i/a/a/i1/t/d;

    .line 10
    iget-object v7, v0, Lf/i/a/a/i1/t/f$a;->a:Ljava/lang/String;

    iget-object v12, v0, Lf/i/a/a/i1/t/f$a;->d:[Ljava/lang/String;

    iget-object v6, v0, Lf/i/a/a/i1/t/f$a;->c:Ljava/lang/String;

    .line 11
    iget-object v9, v15, Lf/i/a/a/i1/t/d;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v15, Lf/i/a/a/i1/t/d;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v15, Lf/i/a/a/i1/t/d;->c:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v15, Lf/i/a/a/i1/t/d;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    move-object/from16 v10, p0

    const/4 v9, 0x4

    goto :goto_5

    .line 14
    :cond_8
    iget-object v9, v15, Lf/i/a/a/i1/t/d;->a:Ljava/lang/String;

    const/high16 v8, 0x40000000    # 2.0f

    move-object/from16 v10, p0

    invoke-static {v11, v9, v10, v8}, Lf/i/a/a/i1/t/d;->b(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 15
    iget-object v9, v15, Lf/i/a/a/i1/t/d;->b:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v8, v9, v7, v11}, Lf/i/a/a/i1/t/d;->b(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 16
    iget-object v8, v15, Lf/i/a/a/i1/t/d;->d:Ljava/lang/String;

    const/4 v9, 0x4

    invoke-static {v7, v8, v6, v9}, Lf/i/a/a/i1/t/d;->b(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    .line 17
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iget-object v8, v15, Lf/i/a/a/i1/t/d;->c:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_4

    .line 18
    :cond_9
    iget-object v7, v15, Lf/i/a/a/i1/t/d;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v6, 0x0

    :goto_5
    if-lez v6, :cond_b

    .line 19
    new-instance v7, Lf/i/a/a/i1/t/f$b;

    invoke-direct {v7, v6, v15}, Lf/i/a/a/i1/t/f$b;-><init>(ILf/i/a/a/i1/t/d;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x21

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto :goto_3

    .line 20
    :cond_c
    invoke-static/range {p4 .. p4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 21
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_1c

    .line 22
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/i1/t/f$b;

    iget-object v6, v6, Lf/i/a/a/i1/t/f$b;->b:Lf/i/a/a/i1/t/d;

    if-nez v6, :cond_d

    const/4 v8, -0x1

    const/16 v9, 0x21

    const/4 v10, 0x2

    const/4 v11, 0x3

    goto/16 :goto_d

    .line 23
    :cond_d
    invoke-virtual {v6}, Lf/i/a/a/i1/t/d;->a()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_e

    .line 24
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v6}, Lf/i/a/a/i1/t/d;->a()I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_e
    const/16 v9, 0x21

    .line 25
    :goto_7
    iget v7, v6, Lf/i/a/a/i1/t/d;->j:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_f

    const/16 v16, 0x1

    goto :goto_8

    :cond_f
    const/16 v16, 0x0

    :goto_8
    if-eqz v16, :cond_10

    .line 26
    new-instance v7, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v7}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 27
    :cond_10
    iget v7, v6, Lf/i/a/a/i1/t/d;->k:I

    if-ne v7, v10, :cond_11

    const/4 v7, 0x1

    goto :goto_9

    :cond_11
    const/4 v7, 0x0

    :goto_9
    if-eqz v7, :cond_12

    .line 28
    new-instance v7, Landroid/text/style/UnderlineSpan;

    invoke-direct {v7}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 29
    :cond_12
    iget-boolean v7, v6, Lf/i/a/a/i1/t/d;->g:Z

    if-eqz v7, :cond_14

    .line 30
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    .line 31
    iget-boolean v10, v6, Lf/i/a/a/i1/t/d;->g:Z

    if-eqz v10, :cond_13

    .line 32
    iget v10, v6, Lf/i/a/a/i1/t/d;->f:I

    .line 33
    invoke-direct {v7, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    .line 34
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_14
    :goto_a
    iget-boolean v7, v6, Lf/i/a/a/i1/t/d;->i:Z

    if-eqz v7, :cond_16

    .line 36
    new-instance v7, Landroid/text/style/BackgroundColorSpan;

    .line 37
    iget-boolean v9, v6, Lf/i/a/a/i1/t/d;->i:Z

    if-eqz v9, :cond_15

    .line 38
    iget v9, v6, Lf/i/a/a/i1/t/d;->h:I

    .line 39
    invoke-direct {v7, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b

    .line 40
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_16
    :goto_b
    iget-object v7, v6, Lf/i/a/a/i1/t/d;->e:Ljava/lang/String;

    if-eqz v7, :cond_17

    .line 42
    new-instance v7, Landroid/text/style/TypefaceSpan;

    .line 43
    iget-object v9, v6, Lf/i/a/a/i1/t/d;->e:Ljava/lang/String;

    .line 44
    invoke-direct {v7, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x21

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c

    :cond_17
    const/16 v9, 0x21

    .line 45
    :goto_c
    iget-object v7, v6, Lf/i/a/a/i1/t/d;->o:Landroid/text/Layout$Alignment;

    if-eqz v7, :cond_18

    .line 46
    new-instance v7, Landroid/text/style/AlignmentSpan$Standard;

    .line 47
    iget-object v10, v6, Lf/i/a/a/i1/t/d;->o:Landroid/text/Layout$Alignment;

    .line 48
    invoke-direct {v7, v10}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v1, v7, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 49
    :cond_18
    iget v6, v6, Lf/i/a/a/i1/t/d;->n:I

    const/4 v7, 0x0

    const/4 v10, 0x1

    if-eq v6, v10, :cond_1b

    const/4 v10, 0x2

    if-eq v6, v10, :cond_1a

    const/4 v11, 0x3

    if-eq v6, v11, :cond_19

    goto :goto_d

    .line 50
    :cond_19
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v6, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d

    :cond_1a
    const/4 v11, 0x3

    .line 51
    new-instance v6, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v6, v7}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v1, v6, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_d
    const/4 v12, 0x1

    goto :goto_e

    :cond_1b
    const/4 v10, 0x2

    const/4 v11, 0x3

    .line 52
    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    float-to-int v7, v7

    const/4 v12, 0x1

    invoke-direct {v6, v7, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v1, v6, v3, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/util/regex/Matcher;Lf/i/a/a/m1/u;Lf/i/a/a/i1/t/e$b;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lf/i/a/a/m1/u;",
            "Lf/i/a/a/i1/t/e$b;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/t/d;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf/i/a/a/i1/t/h;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 2
    iput-wide v2, p3, Lf/i/a/a/i1/t/e$b;->a:J

    const/4 v2, 0x2

    .line 3
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf/i/a/a/i1/t/h;->c(Ljava/lang/String;)J

    move-result-wide v2

    .line 4
    iput-wide v2, p3, Lf/i/a/a/i1/t/e$b;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lf/i/a/a/i1/t/f;->c(Ljava/lang/String;Lf/i/a/a/i1/t/e$b;)V

    .line 6
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7
    :goto_0
    invoke-virtual {p2}, Lf/i/a/a/m1/u;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\n"

    .line 9
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3, p5}, Lf/i/a/a/i1/t/f;->d(Ljava/lang/String;Ljava/lang/String;Lf/i/a/a/i1/t/e$b;Ljava/util/List;)V

    return v1

    .line 12
    :catch_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    return v0
.end method

.method public static c(Ljava/lang/String;Lf/i/a/a/i1/t/e$b;)V
    .locals 8

    .line 1
    sget-object v0, Lf/i/a/a/i1/t/f;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v3, "line"

    .line 5
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/16 v6, 0x2c

    const/4 v7, -0x1

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v7, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lf/i/a/a/i1/t/f;->e(Ljava/lang/String;)I

    move-result v3

    .line 8
    iput v3, p1, Lf/i/a/a/i1/t/e$b;->g:I

    .line 9
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 10
    :cond_1
    iput v4, p1, Lf/i/a/a/i1/t/e$b;->g:I

    :goto_1
    const-string v1, "%"

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-static {v2}, Lf/i/a/a/i1/t/h;->b(Ljava/lang/String;)F

    move-result v0

    .line 13
    iput v0, p1, Lf/i/a/a/i1/t/e$b;->e:F

    .line 14
    iput v5, p1, Lf/i/a/a/i1/t/e$b;->f:I

    goto :goto_0

    .line 15
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_3
    int-to-float v1, v1

    .line 16
    iput v1, p1, Lf/i/a/a/i1/t/e$b;->e:F

    .line 17
    iput v0, p1, Lf/i/a/a/i1/t/e$b;->f:I

    goto :goto_0

    :cond_4
    const-string v0, "align"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    invoke-static {v2}, Lf/i/a/a/i1/t/f;->f(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 20
    iput-object v0, p1, Lf/i/a/a/i1/t/e$b;->d:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_5
    const-string v0, "position"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_6

    add-int/lit8 v1, v0, 0x1

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf/i/a/a/i1/t/f;->e(Ljava/lang/String;)I

    move-result v1

    .line 24
    iput v1, p1, Lf/i/a/a/i1/t/e$b;->i:I

    .line 25
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 26
    :cond_6
    iput v4, p1, Lf/i/a/a/i1/t/e$b;->i:I

    .line 27
    :goto_2
    invoke-static {v2}, Lf/i/a/a/i1/t/h;->b(Ljava/lang/String;)F

    move-result v0

    .line 28
    iput v0, p1, Lf/i/a/a/i1/t/e$b;->h:F

    goto/16 :goto_0

    :cond_7
    const-string v0, "size"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {v2}, Lf/i/a/a/i1/t/h;->b(Ljava/lang/String;)F

    move-result v0

    .line 31
    iput v0, p1, Lf/i/a/a/i1/t/e$b;->j:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 32
    :catch_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lf/i/a/a/i1/t/e$b;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lf/i/a/a/i1/t/e$b;",
            "Ljava/util/List<",
            "Lf/i/a/a/i1/t/d;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ""

    if-ge v7, v8, :cond_26

    .line 5
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string v10, " "

    const/16 v11, 0x3e

    const/16 v12, 0x3c

    const/16 v13, 0x26

    const/4 v14, -0x1

    if-eq v8, v13, :cond_18

    if-eq v8, v12, :cond_0

    .line 6
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_12

    :cond_0
    add-int/lit8 v8, v7, 0x1

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v8, v12, :cond_1

    goto/16 :goto_d

    .line 8
    :cond_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 9
    :goto_1
    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-ne v8, v14, :cond_3

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    :goto_2
    add-int/lit8 v11, v8, -0x2

    .line 11
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v13, :cond_4

    const/4 v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    :goto_3
    if-eqz v12, :cond_5

    const/4 v14, 0x2

    goto :goto_4

    :cond_5
    const/4 v14, 0x1

    :goto_4
    add-int/2addr v7, v14

    if-eqz v13, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v8, -0x1

    .line 12
    :goto_5
    invoke-virtual {v1, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    const/16 v16, 0x0

    if-eqz v14, :cond_7

    move-object/from16 v11, v16

    goto :goto_6

    :cond_7
    const-string v14, "[ \\.]"

    .line 15
    invoke-static {v11, v14}, Lf/i/a/a/m1/h0;->m0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v6

    :goto_6
    if-eqz v11, :cond_17

    .line 16
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/16 v6, 0x62

    const/4 v15, 0x5

    if-eq v14, v6, :cond_d

    const/16 v6, 0x63

    if-eq v14, v6, :cond_c

    const/16 v6, 0x69

    if-eq v14, v6, :cond_b

    const v6, 0x3291ee

    if-eq v14, v6, :cond_a

    const/16 v6, 0x75

    if-eq v14, v6, :cond_9

    const/16 v6, 0x76

    if-eq v14, v6, :cond_8

    goto :goto_7

    :cond_8
    const-string v6, "v"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x5

    goto :goto_8

    :cond_9
    const-string v6, "u"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x4

    goto :goto_8

    :cond_a
    const-string v6, "lang"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x3

    goto :goto_8

    :cond_b
    const-string v6, "i"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x2

    goto :goto_8

    :cond_c
    const-string v6, "c"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_8

    :cond_d
    const-string v6, "b"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v6, -0x1

    :goto_8
    if-eqz v6, :cond_f

    const/4 v14, 0x1

    if-eq v6, v14, :cond_f

    const/4 v14, 0x2

    if-eq v6, v14, :cond_f

    const/4 v14, 0x3

    if-eq v6, v14, :cond_f

    const/4 v14, 0x4

    if-eq v6, v14, :cond_f

    if-eq v6, v15, :cond_f

    const/4 v6, 0x0

    goto :goto_9

    :cond_f
    const/4 v6, 0x1

    :goto_9
    if-nez v6, :cond_10

    goto :goto_d

    :cond_10
    if-eqz v12, :cond_13

    .line 17
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_d

    .line 18
    :cond_12
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf/i/a/a/i1/t/f$a;

    .line 19
    invoke-static {v0, v6, v3, v2, v5}, Lf/i/a/a/i1/t/f;->a(Ljava/lang/String;Lf/i/a/a/i1/t/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 20
    iget-object v6, v6, Lf/i/a/a/i1/t/f$a;->a:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_d

    :cond_13
    if-nez v13, :cond_17

    .line 21
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 22
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_14

    move-object/from16 v11, v16

    goto :goto_c

    .line 24
    :cond_14
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_15

    const/4 v11, 0x0

    goto :goto_a

    .line 25
    :cond_15
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    .line 26
    invoke-virtual {v7, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_a
    const-string v10, "\\."

    .line 27
    invoke-static {v7, v10}, Lf/i/a/a/m1/h0;->l0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 28
    aget-object v10, v7, v11

    .line 29
    array-length v11, v7

    const/4 v12, 0x1

    if-le v11, v12, :cond_16

    .line 30
    array-length v11, v7

    invoke-static {v7, v12, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_b

    .line 31
    :cond_16
    sget-object v7, Lf/i/a/a/i1/t/f$a;->e:[Ljava/lang/String;

    .line 32
    :goto_b
    new-instance v11, Lf/i/a/a/i1/t/f$a;

    invoke-direct {v11, v10, v6, v9, v7}, Lf/i/a/a/i1/t/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 33
    :goto_c
    invoke-virtual {v4, v11}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_17
    :goto_d
    move v7, v8

    goto/16 :goto_12

    :cond_18
    const/16 v6, 0x3b

    add-int/lit8 v7, v7, 0x1

    .line 34
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v9, 0x20

    .line 35
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    const/4 v15, -0x1

    if-ne v6, v15, :cond_19

    move v6, v14

    goto :goto_e

    :cond_19
    if-ne v14, v15, :cond_1a

    goto :goto_e

    .line 36
    :cond_1a
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_e
    if-eq v6, v15, :cond_25

    .line 37
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v15, 0xced

    if-eq v8, v15, :cond_1e

    const/16 v15, 0xd88

    if-eq v8, v15, :cond_1d

    const v15, 0x179c4

    if-eq v8, v15, :cond_1c

    const v15, 0x337f11

    if-eq v8, v15, :cond_1b

    goto :goto_f

    :cond_1b
    const-string v8, "nbsp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x2

    goto :goto_10

    :cond_1c
    const-string v8, "amp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x3

    goto :goto_10

    :cond_1d
    const-string v8, "lt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x0

    goto :goto_10

    :cond_1e
    const-string v8, "gt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_10

    :cond_1f
    :goto_f
    const/4 v7, -0x1

    :goto_10
    if-eqz v7, :cond_23

    const/4 v8, 0x1

    if-eq v7, v8, :cond_22

    const/4 v8, 0x2

    if-eq v7, v8, :cond_21

    const/4 v8, 0x3

    if-eq v7, v8, :cond_20

    goto :goto_11

    .line 39
    :cond_20
    invoke-virtual {v3, v13}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_11

    .line 40
    :cond_21
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_11

    .line 41
    :cond_22
    invoke-virtual {v3, v11}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_11

    .line 42
    :cond_23
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_11
    if-ne v6, v14, :cond_24

    .line 43
    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_24
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    goto :goto_12

    .line 44
    :cond_25
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_12
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 45
    :cond_26
    :goto_13
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 46
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/i/a/a/i1/t/f$a;

    invoke-static {v0, v1, v3, v2, v5}, Lf/i/a/a/i1/t/f;->a(Ljava/lang/String;Lf/i/a/a/i1/t/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_13

    .line 47
    :cond_27
    new-instance v1, Lf/i/a/a/i1/t/f$a;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/String;

    invoke-direct {v1, v9, v4, v9, v6}, Lf/i/a/a/i1/t/f$a;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 48
    invoke-static {v0, v1, v3, v2, v5}, Lf/i/a/a/i1/t/f;->a(Ljava/lang/String;Lf/i/a/a/i1/t/f$a;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p2

    .line 49
    iput-object v3, v0, Lf/i/a/a/i1/t/e$b;->c:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public static e(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.method public static f(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "left"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "middle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch
.end method

.class public final Lf/i/a/a/b1/x/z;
.super Lf/i/a/a/b1/a;
.source "TsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/i/a/a/b1/x/z$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/i/a/a/m1/e0;JJI)V
    .locals 16

    .line 1
    new-instance v1, Lf/i/a/a/b1/a$b;

    invoke-direct {v1}, Lf/i/a/a/b1/a$b;-><init>()V

    new-instance v2, Lf/i/a/a/b1/x/z$a;

    move-object/from16 v0, p1

    move/from16 v3, p6

    invoke-direct {v2, v3, v0}, Lf/i/a/a/b1/x/z$a;-><init>(ILf/i/a/a/m1/e0;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Lf/i/a/a/b1/a;-><init>(Lf/i/a/a/b1/a$e;Lf/i/a/a/b1/a$g;JJJJJJI)V

    return-void
.end method

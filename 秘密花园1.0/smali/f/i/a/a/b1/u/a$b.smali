.class public final Lf/i/a/a/b1/u/a$b;
.super Lf/i/a/a/b1/u/a;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/b1/u/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final g1:Lf/i/a/a/m1/u;


# direct methods
.method public constructor <init>(ILf/i/a/a/m1/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/i/a/a/b1/u/a;-><init>(I)V

    .line 2
    iput-object p2, p0, Lf/i/a/a/b1/u/a$b;->g1:Lf/i/a/a/m1/u;

    return-void
.end method

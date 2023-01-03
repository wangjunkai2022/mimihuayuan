.class public final Lf/i/a/a/j1/f$a;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/i/a/a/j1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lf/i/a/a/h1/p0;

.field public final d:[I

.field public final e:[[[I


# direct methods
.method public constructor <init>([I[Lf/i/a/a/h1/p0;[I[[[ILf/i/a/a/h1/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/i/a/a/j1/f$a;->b:[I

    .line 3
    iput-object p2, p0, Lf/i/a/a/j1/f$a;->c:[Lf/i/a/a/h1/p0;

    .line 4
    iput-object p4, p0, Lf/i/a/a/j1/f$a;->e:[[[I

    .line 5
    iput-object p3, p0, Lf/i/a/a/j1/f$a;->d:[I

    .line 6
    array-length p1, p1

    iput p1, p0, Lf/i/a/a/j1/f$a;->a:I

    return-void
.end method

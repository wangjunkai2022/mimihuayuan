.class public final Lf/d/a/o/p/b;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lf/d/a/o/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf/d/a/o/l<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Lf/d/a/o/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/d/a/o/l<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/o/p/b;

    invoke-direct {v0}, Lf/d/a/o/p/b;-><init>()V

    sput-object v0, Lf/d/a/o/p/b;->b:Lf/d/a/o/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lf/d/a/o/n/w;II)Lf/d/a/o/n/w;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lf/d/a/o/n/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lf/d/a/o/n/w<",
            "TT;>;II)",
            "Lf/d/a/o/n/w<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method

.method public b(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

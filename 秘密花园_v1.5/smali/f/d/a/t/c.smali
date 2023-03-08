.class public final Lf/d/a/t/c;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lf/d/a/o/f;


# static fields
.field public static final b:Lf/d/a/t/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/d/a/t/c;

    invoke-direct {v0}, Lf/d/a/t/c;-><init>()V

    sput-object v0, Lf/d/a/t/c;->b:Lf/d/a/t/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method

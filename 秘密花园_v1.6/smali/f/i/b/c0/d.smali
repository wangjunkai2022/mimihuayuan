.class public Lf/i/b/c0/d;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lf/i/b/c0/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/i/b/c0/t<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lf/i/b/c0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

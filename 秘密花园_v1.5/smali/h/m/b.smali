.class public interface abstract Lh/m/b;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lh/m/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/m/b$a;
    }
.end annotation


# static fields
.field public static final a:Lh/m/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lh/m/b$a;->a:Lh/m/b$a;

    sput-object v0, Lh/m/b;->a:Lh/m/b$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lh/m/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/m/a<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract b(Lh/m/a;)Lh/m/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/m/a<",
            "-TT;>;)",
            "Lh/m/a<",
            "TT;>;"
        }
    .end annotation
.end method

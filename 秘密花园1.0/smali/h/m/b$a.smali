.class public final Lh/m/b$a;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lh/m/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/m/c$b<",
        "Lh/m/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lh/m/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/m/b$a;

    invoke-direct {v0}, Lh/m/b$a;-><init>()V

    sput-object v0, Lh/m/b$a;->a:Lh/m/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

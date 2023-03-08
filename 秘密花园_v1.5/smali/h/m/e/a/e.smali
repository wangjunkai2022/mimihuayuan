.class public final Lh/m/e/a/e;
.super Ljava/lang/Object;
.source "DebugMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/m/e/a/e$a;
    }
.end annotation


# static fields
.field public static final a:Lh/m/e/a/e$a;

.field public static b:Lh/m/e/a/e$a;

.field public static final c:Lh/m/e/a/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh/m/e/a/e;

    invoke-direct {v0}, Lh/m/e/a/e;-><init>()V

    sput-object v0, Lh/m/e/a/e;->c:Lh/m/e/a/e;

    .line 2
    new-instance v0, Lh/m/e/a/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lh/m/e/a/e$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lh/m/e/a/e;->a:Lh/m/e/a/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

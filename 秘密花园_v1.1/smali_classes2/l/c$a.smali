.class public final Ll/c$a;
.super Ljava/lang/Object;
.source "BuiltInConverters.java"

# interfaces
.implements Ll/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/l<",
        "Li/i0;",
        "Li/i0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ll/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/c$a;

    invoke-direct {v0}, Ll/c$a;-><init>()V

    sput-object v0, Ll/c$a;->a:Ll/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Li/i0;

    .line 2
    :try_start_0
    invoke-static {p1}, Ll/l0;->a(Li/i0;)Li/i0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Li/i0;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Li/i0;->close()V

    throw v0
.end method

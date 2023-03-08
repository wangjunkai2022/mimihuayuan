.class public final Ll/c$c;
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
    name = "c"
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
.field public static final a:Ll/c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/c$c;

    invoke-direct {v0}, Ll/c$c;-><init>()V

    sput-object v0, Ll/c$c;->a:Ll/c$c;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Li/i0;

    return-object p1
.end method

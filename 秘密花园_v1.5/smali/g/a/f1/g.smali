.class public final enum Lg/a/f1/g;
.super Ljava/lang/Enum;
.source "InvalidRow.java"

# interfaces
.implements Lg/a/f1/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lg/a/f1/g;",
        ">;",
        "Lg/a/f1/p;"
    }
.end annotation


# static fields
.field public static final enum a:Lg/a/f1/g;

.field public static final synthetic b:[Lg/a/f1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lg/a/f1/g;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/a/f1/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/a/f1/g;->a:Lg/a/f1/g;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/a/f1/g;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lg/a/f1/g;->b:[Lg/a/f1/g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg/a/f1/g;
    .locals 1

    .line 1
    const-class v0, Lg/a/f1/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/a/f1/g;

    return-object p0
.end method

.method public static values()[Lg/a/f1/g;
    .locals 1

    .line 1
    sget-object v0, Lg/a/f1/g;->b:[Lg/a/f1/g;

    invoke-virtual {v0}, [Lg/a/f1/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/a/f1/g;

    return-object v0
.end method


# virtual methods
.method public A(JLjava/util/Date;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public B(J)Lio/realm/RealmFieldType;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public C(JD)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public D(J[B)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public E(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final F()Ljava/lang/RuntimeException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object is no longer managed by Realm. Has it been deleted?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public b(JF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public c()J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public d()Lio/realm/internal/Table;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public e(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public f(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public g(J)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public h()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public i(JZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public j(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public k(J)D
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public l()J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public m(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public n(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public o(J)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public p(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public q(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public r(JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public s(Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public t(J)Lio/realm/internal/OsList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public u(JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w(J)Ljava/util/Date;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public x(JLio/realm/RealmFieldType;)Lio/realm/internal/OsList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public y(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public z(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lg/a/f1/g;->F()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

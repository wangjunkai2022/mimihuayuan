.class public Lg/a/k;
.super Lg/a/i0;
.source "ImmutableRealmObjectSchema.java"


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/k0;Lio/realm/internal/Table;)V
    .locals 1

    .line 2
    new-instance v0, Lg/a/i0$a;

    invoke-direct {v0, p3}, Lg/a/i0$a;-><init>(Lio/realm/internal/Table;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lg/a/i0;-><init>(Lg/a/a;Lg/a/k0;Lio/realm/internal/Table;Lg/a/f1/c;)V

    return-void
.end method

.method public constructor <init>(Lg/a/a;Lg/a/k0;Lio/realm/internal/Table;Lg/a/f1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lg/a/i0;-><init>(Lg/a/a;Lg/a/k0;Lio/realm/internal/Table;Lg/a/f1/c;)V

    return-void
.end method


# virtual methods
.method public varargs b(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lg/a/f1/u/c;
    .locals 2

    .line 1
    new-instance v0, Lg/a/l0;

    iget-object v1, p0, Lg/a/i0;->a:Lg/a/k0;

    invoke-direct {v0, v1}, Lg/a/l0;-><init>(Lg/a/k0;)V

    .line 2
    iget-object v1, p0, Lg/a/i0;->c:Lio/realm/internal/Table;

    .line 3
    invoke-static {v0, v1, p1, p2}, Lg/a/f1/u/c;->d(Lg/a/f1/u/c$a;Lio/realm/internal/Table;Ljava/lang/String;[Lio/realm/RealmFieldType;)Lg/a/f1/u/c;

    move-result-object p1

    return-object p1
.end method

.class final Lio/teak/sdk/push/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/push/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final a:Lio/teak/sdk/push/b$a;

.field private b:Ljava/util/Date;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lio/teak/sdk/push/b;Lio/teak/sdk/e/c;)V
    .locals 6

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "state"

    invoke-virtual {p2, v0}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Lio/teak/sdk/push/b$a;->b:Lio/teak/sdk/push/b$a;

    iget-object v1, v1, Lio/teak/sdk/push/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    sget-object v0, Lio/teak/sdk/push/b$a;->b:Lio/teak/sdk/push/b$a;

    iput-object v0, p0, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    .line 85
    :goto_0
    const-string v0, "date"

    invoke-virtual {p2, v0}, Lio/teak/sdk/e/c;->f(Ljava/lang/String;)J

    move-result-wide v0

    .line 86
    new-instance v2, Ljava/util/Date;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lio/teak/sdk/push/b$b;->b:Ljava/util/Date;

    .line 88
    const-string v0, "canBypassDnd"

    invoke-virtual {p2, v0}, Lio/teak/sdk/e/c;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/teak/sdk/push/b$b;->c:Z

    .line 89
    const-string v0, "canShowOnLockscreen"

    invoke-virtual {p2, v0}, Lio/teak/sdk/e/c;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/teak/sdk/push/b$b;->d:Z

    .line 90
    const-string v0, "canShowBadge"

    invoke-virtual {p2, v0}, Lio/teak/sdk/e/c;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/teak/sdk/push/b$b;->e:Z

    .line 91
    return-void

    .line 79
    :cond_0
    sget-object v1, Lio/teak/sdk/push/b$a;->c:Lio/teak/sdk/push/b$a;

    iget-object v1, v1, Lio/teak/sdk/push/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lio/teak/sdk/push/b$a;->c:Lio/teak/sdk/push/b$a;

    iput-object v0, p0, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    goto :goto_0

    .line 82
    :cond_1
    sget-object v0, Lio/teak/sdk/push/b$a;->a:Lio/teak/sdk/push/b$a;

    iput-object v0, p0, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    goto :goto_0
.end method

.method constructor <init>(Lio/teak/sdk/push/b;Lio/teak/sdk/push/b$a;ZZZ)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    .line 69
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/push/b$b;->b:Ljava/util/Date;

    .line 70
    iput-boolean p3, p0, Lio/teak/sdk/push/b$b;->c:Z

    .line 71
    iput-boolean p4, p0, Lio/teak/sdk/push/b$b;->d:Z

    .line 72
    iput-boolean p5, p0, Lio/teak/sdk/push/b$b;->e:Z

    .line 73
    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    const-string v1, "state"

    iget-object v2, p0, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    iget-object v2, v2, Lio/teak/sdk/push/b$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "date"

    iget-object v2, p0, Lio/teak/sdk/push/b$b;->b:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    sget-object v2, Lio/teak/sdk/push/b$a;->b:Lio/teak/sdk/push/b$a;

    if-ne v1, v2, :cond_0

    .line 98
    const-string v1, "canBypassDnd"

    iget-boolean v2, p0, Lio/teak/sdk/push/b$b;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "canShowOnLockscreen"

    iget-boolean v2, p0, Lio/teak/sdk/push/b$b;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "canShowBadge"

    iget-boolean v2, p0, Lio/teak/sdk/push/b$b;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-object v0
.end method

.method public final a(Lio/teak/sdk/push/b$b;)Z
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    iget-object v1, p1, Lio/teak/sdk/push/b$b;->a:Lio/teak/sdk/push/b$a;

    invoke-virtual {v0, v1}, Lio/teak/sdk/push/b$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/teak/sdk/push/b$b;->c:Z

    iget-boolean v1, p1, Lio/teak/sdk/push/b$b;->c:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/teak/sdk/push/b$b;->d:Z

    iget-boolean v1, p1, Lio/teak/sdk/push/b$b;->d:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lio/teak/sdk/push/b$b;->e:Z

    iget-boolean v1, p1, Lio/teak/sdk/push/b$b;->e:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 111
    instance-of v0, p1, Lio/teak/sdk/push/b$b;

    if-nez v0, :cond_0

    .line 112
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 115
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lio/teak/sdk/push/b$b;

    .line 116
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lio/teak/sdk/push/b$b;->a(Lio/teak/sdk/push/b$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/teak/sdk/push/b$b;->b:Ljava/util/Date;

    iget-object v1, p1, Lio/teak/sdk/push/b$b;->b:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

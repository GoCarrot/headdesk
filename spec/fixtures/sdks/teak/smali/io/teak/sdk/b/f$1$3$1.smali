.class final Lio/teak/sdk/b/f$1$3$1;
.super Lio/teak/sdk/b/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/f$1$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b/f$1$3;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/f$1$3;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lio/teak/sdk/b/f$1$3$1;->a:Lio/teak/sdk/b/f$1$3;

    invoke-direct {p0}, Lio/teak/sdk/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e;)V
    .locals 2

    .prologue
    .line 140
    const-string v0, "/me/purchase"

    iget-object v1, p0, Lio/teak/sdk/b/f$1$3$1;->a:Lio/teak/sdk/b/f$1$3;

    iget-object v1, v1, Lio/teak/sdk/b/f$1$3;->a:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lio/teak/sdk/l;->a(Ljava/lang/String;Ljava/util/Map;Lio/teak/sdk/b/e;)V

    .line 141
    return-void
.end method

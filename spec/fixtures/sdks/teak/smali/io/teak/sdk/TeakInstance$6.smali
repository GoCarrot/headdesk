.class final Lio/teak/sdk/TeakInstance$6;
.super Lio/teak/sdk/Teak$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakInstance;->registerTeakInternalDeepLinks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/TeakInstance;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakInstance;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lio/teak/sdk/TeakInstance$6;->a:Lio/teak/sdk/TeakInstance;

    invoke-direct {p0}, Lio/teak/sdk/Teak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$6;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v0}, Lio/teak/sdk/TeakInstance;->access$400(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/h/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$6;->a:Lio/teak/sdk/TeakInstance;

    invoke-static {v0}, Lio/teak/sdk/TeakInstance;->access$400(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/h/c;

    move-result-object v1

    const-string v0, "sku"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lio/teak/sdk/h/c;->a(Ljava/lang/String;)V

    .line 483
    :cond_0
    return-void
.end method

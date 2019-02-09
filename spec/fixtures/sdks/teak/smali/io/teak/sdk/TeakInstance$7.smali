.class final Lio/teak/sdk/TeakInstance$7;
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


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakInstance;)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Lio/teak/sdk/Teak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 1
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
    .line 489
    new-instance v0, Lio/teak/sdk/TeakInstance$7$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/TeakInstance$7$1;-><init>(Lio/teak/sdk/TeakInstance$7;)V

    invoke-static {v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$a;)V

    .line 523
    return-void
.end method

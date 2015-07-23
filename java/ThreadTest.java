class ThreadTest{
	public static void main(String[] args) {
		long id = Thread.currentThread().getId();
		String name = Thread.currentThread().getName();
		System.out.println(id+" : "+name);
	}
}